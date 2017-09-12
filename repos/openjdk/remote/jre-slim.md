## `openjdk:jre-slim`

```console
$ docker pull openjdk@sha256:e3d9db93e2c6ac655b59dd54ebe8c7fa19a8ee6b88e6471853ef323ccfa7e0c1
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

### `openjdk:jre-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:28846a93d3fbee9ff71ba142885b6b80454e248b35cfeb52a2b4d32b228326cd
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79810619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f83c04b0ea6fe66768c00f77cf2ae346d406b806954a76cc12382c5dbdb87db`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:56:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:56:40 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:56:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:56:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:34 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:35 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 08:57:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 08:57:50 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea00d9930d41613090f3c1a19433ea355976ff7be686a2c3b5a457a7f4c72a5`  
		Last Modified: Sat, 09 Sep 2017 00:36:08 GMT  
		Size: 267.3 KB (267320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def04828dfb0ee9a02d7a2841031c5c5957cb0442bf8471fe72e71cdf182cfb1`  
		Last Modified: Sat, 09 Sep 2017 00:36:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97cb98f633da303c199faf9e12723cbfe38b65415935432911a4494bb0d8f2f`  
		Last Modified: Sat, 09 Sep 2017 00:36:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5408c2492bfc2c3b110cacddbb6a0a0a868f003bdc36054ea9a0aedb45dcf31`  
		Last Modified: Sat, 09 Sep 2017 00:38:13 GMT  
		Size: 56.8 MB (56782863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5147533309a3702c6086648fa504690fdc3213063082635d6be6aab6e97e1600`  
		Last Modified: Sat, 09 Sep 2017 00:38:00 GMT  
		Size: 272.0 KB (272008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:ae915fbab3fa148cee8c1c872f3e76aecd9933336f3660fd30210dd1cd9aebe3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.1 MB (69073656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67a949d06a5649a94f40f10fb3864a06d932a1ee81491183638e1c5e07596100`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 20:04:19 GMT
ADD file:7a4f76115b8f87534c9bcd4a40386c07af5c7bfdb3429f22d53d07faa0de57da in / 
# Fri, 08 Sep 2017 20:04:20 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 01:24:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 01:24:16 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 01:24:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 01:24:21 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 01:36:19 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 01:36:19 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 01:36:20 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 01:36:21 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 01:41:18 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 01:41:30 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:fef762b8f53b037e95e7c93f502931dc720c98a6e4ab7b70807fe14fafba6103`  
		Last Modified: Fri, 08 Sep 2017 20:21:38 GMT  
		Size: 21.2 MB (21161607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ed29576d65522cbbed58a30e624b0c9ce05670a2a468b30da5a89395a14504`  
		Last Modified: Tue, 12 Sep 2017 02:24:44 GMT  
		Size: 447.5 KB (447546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaa34c89c94fd16e0f5da2d03963f71c15100bce580535702459a1af4a1fb55`  
		Last Modified: Tue, 12 Sep 2017 02:24:44 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9cb162fd81b18f7d0dab1b6a6573f942626867b322dda60c4d6edc3e120ec8e`  
		Last Modified: Tue, 12 Sep 2017 02:24:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e718ffe1195f5225f74324b53d475219ab09ff8363f21b53e44f28adef1d3398`  
		Last Modified: Tue, 12 Sep 2017 02:28:41 GMT  
		Size: 47.2 MB (47191929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f33d16c226a56d929715f02af3d5bf9e6fa95bc14ca4c25472628b1267b8c98`  
		Last Modified: Tue, 12 Sep 2017 02:28:13 GMT  
		Size: 272.2 KB (272196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:8f038500d56a689f4b19773fa90c20d86f8acd7f186dc5e8ba5af050554858fa
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66129438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff70cddc286271f783d49b7a75f000afd48837463b85fbe991b4ff9732148bee`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:45:09 GMT
ADD file:c64f62f8baccded9d94037c0935c477d3dd18839a9c4e565679657d4c9df92c8 in / 
# Sat, 09 Sep 2017 01:45:10 GMT
CMD ["bash"]
# Mon, 11 Sep 2017 23:36:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:36:45 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 23:36:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 11 Sep 2017 23:36:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 11 Sep 2017 23:51:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 11 Sep 2017 23:51:36 GMT
ENV JAVA_VERSION=8u141
# Mon, 11 Sep 2017 23:51:37 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 11 Sep 2017 23:51:39 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 11 Sep 2017 23:53:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 11 Sep 2017 23:54:01 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:07ff66d25cfd7ff46d2bd66b7005ca8b45d0e37e780d439e3032785bd84d99a4`  
		Last Modified: Sat, 09 Sep 2017 01:58:27 GMT  
		Size: 19.3 MB (19277906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c076f3b5aaa44773a9b061fd0abb84d439faa714de40907b17bf132698a6c16`  
		Last Modified: Tue, 12 Sep 2017 00:36:27 GMT  
		Size: 430.5 KB (430536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0db1a0c5f474a478e91aaf3cd6aac14252ae8007226a33d2f3f4d131fcd1d2f`  
		Last Modified: Tue, 12 Sep 2017 00:36:26 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67437c0d67c1fcdbf6fa4f07bfb31698f424700582d23fde1dd62f0d067571ba`  
		Last Modified: Tue, 12 Sep 2017 00:36:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b8f528370adfc2a60b59fb6c8f04e981f1066dce6f44c5532af9d8b354eb03`  
		Last Modified: Tue, 12 Sep 2017 00:40:29 GMT  
		Size: 46.1 MB (46148402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82beb826cd6f033f657d6bb2d366e5b561996f32402691ea869466a09a1a8109`  
		Last Modified: Tue, 12 Sep 2017 00:40:05 GMT  
		Size: 272.2 KB (272217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:aaa4e1cdb7b49dd9f1e9f99fe3ec4cd1b975f1d73d61cd5f173b798d60b97b6d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.0 MB (69969319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7546f7d023e28423d119f836dd14acd37a91b44a7dc46c503a4af4f96d750da`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:29:09 GMT
ADD file:16391f421551b998f1ff496c48dc67f34dd2003077158fd1af78a898ea367e1d in / 
# Fri, 08 Sep 2017 17:29:10 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 22:43:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 22:43:39 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 22:43:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 22:43:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 22:45:51 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 22:45:52 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 22:45:52 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 22:45:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 22:47:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 22:47:31 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:0bd6dbb95c7a219839ea8345519110bbccc30c113a72119bbd92c7fe2a3f1e78`  
		Last Modified: Fri, 08 Sep 2017 17:43:38 GMT  
		Size: 20.3 MB (20337273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a76af68c1d60c07e33c4aa1e837762c3569646df60f4f0174d1ba83024863`  
		Last Modified: Fri, 08 Sep 2017 22:55:34 GMT  
		Size: 440.8 KB (440823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd72c893e09a1c2f500ced1a71839b1fdad41fd04c2281c322b582cd5526ffd`  
		Last Modified: Fri, 08 Sep 2017 22:55:32 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d70f76b5d186f9a22db9d33bfee65f9f6d00904a00959b2ec215d2392980133`  
		Last Modified: Fri, 08 Sep 2017 22:55:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d9cf2c7dc05df5bf9a68bdb1f833a04f16ea8d3f502cf7586fd5a1cf89957d`  
		Last Modified: Fri, 08 Sep 2017 22:56:58 GMT  
		Size: 48.9 MB (48918751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfcba9ecb2e206c38d6a3d920e8ee92d66a9f326c9d0b950cfa2e57c93047bcb`  
		Last Modified: Fri, 08 Sep 2017 22:56:43 GMT  
		Size: 272.1 KB (272095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-slim` - linux; 386

```console
$ docker pull openjdk@sha256:1562902f90336be04f24e5243df0a9fd6d8ba6ca10af51edbbd884db6dc18f12
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80226788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4d06fdf043b4af69837cf5945afffdb5f877408fd5920630251735e65378a3b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:57 GMT
ADD file:637a2d4ad21512f6aa9863626de3b678f1aff76377357d7e15fc6a381ec94689 in / 
# Fri, 08 Sep 2017 13:19:57 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:15:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 15:15:43 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 15:15:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 15:15:44 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 15:16:45 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 15:16:45 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 15:16:45 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 15:16:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 15:17:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 15:17:09 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:2f5ca21e3ce4be74a6720d0866b1c95e310ae9d9494d9e5155a3633cd5cd62cd`  
		Last Modified: Fri, 08 Sep 2017 13:27:56 GMT  
		Size: 23.1 MB (23125784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3954117579cf63aa6d4f437298814195581d13005972e2fed6070cd434379007`  
		Last Modified: Fri, 08 Sep 2017 15:32:27 GMT  
		Size: 463.4 KB (463422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38f125eaf7c3f7dfbe1993cc361c45586d0ed10c0cf968f5e3681e7568932c8`  
		Last Modified: Fri, 08 Sep 2017 15:32:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef71936cc7c95e2d4cf2866feac6aa8d4be9a94cc45c35797d093391e00ca696`  
		Last Modified: Fri, 08 Sep 2017 15:32:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2fc35577fa3aa76a8485ee15270620fb055f1c4edf2f6bb591dd24f49b08b9`  
		Last Modified: Fri, 08 Sep 2017 15:36:56 GMT  
		Size: 56.4 MB (56365071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c93cf5f606b5cdd3629b1bfe13acd385aecde7ab0fbd33c019f59e125e79bf2`  
		Last Modified: Fri, 08 Sep 2017 15:36:44 GMT  
		Size: 272.1 KB (272132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:67f0d0a4a4e15bc5856d80ae6e16068e4b71a3ee571a322f369b71939b693408
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.7 MB (72717584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4a3d570a49bac53eb43e0a95ea6138e70c13f780291f00001bb343f196b496c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:22 GMT
ADD file:1422f50e4e998477f6c3b2fcee6853da10eb8bca7926ec70e494ff485f6284d7 in / 
# Fri, 08 Sep 2017 00:34:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:26:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:26:30 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 01:26:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 01:26:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 01:27:07 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 01:27:07 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 01:27:07 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 01:27:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 01:27:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 01:27:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:7ff7f6fdf12a09feca6f75b5d90b860059bdccf4185a9dab7c2c5b9e6e90123a`  
		Last Modified: Fri, 08 Sep 2017 00:41:42 GMT  
		Size: 22.7 MB (22746060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee90978362d08c4e770b183283933846b88fbddcbd1d24fd3c54f27666128c68`  
		Last Modified: Fri, 08 Sep 2017 01:30:23 GMT  
		Size: 449.7 KB (449687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ddf0608c4e5036b59bfb654bb8aca9329c0686cb0087c08b8c478689a2bd75`  
		Last Modified: Fri, 08 Sep 2017 01:30:23 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0f1724ac87b8200685750f493d25f1c1b6f8ee427c651522ede69275fa6aa0`  
		Last Modified: Fri, 08 Sep 2017 01:30:22 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d03da41b673a5cf5ce30b2adccc8f7ca66117d8d1443df7a7362569289bb7f9`  
		Last Modified: Fri, 08 Sep 2017 01:31:25 GMT  
		Size: 49.2 MB (49249405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c001076d37c06876242b21ed86d2738e4229e0c158cec8fd6192efaa48966761`  
		Last Modified: Fri, 08 Sep 2017 01:31:14 GMT  
		Size: 272.1 KB (272054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:a4efdbace05a21a75075edf3e09975bf6167f11b36fdfa9832edbfcb8248ac48
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71342178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e17bd6ce905fdf701d2f78de856234841c2c7814452c3770d57c61fd6ef6eaa`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:23:00 GMT
ADD file:9b074cf37adfa815e3a6b300f8652eb77a06cfeea3f74fd021795cff318ca2ce in / 
# Fri, 08 Sep 2017 05:23:00 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:54:38 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 05:54:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 05:54:39 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 05:55:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 05:55:09 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 05:55:09 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 05:55:09 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 05:55:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 05:55:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:4a3a3449ff754d3a7e8f189d020e507ff2cb0fd172b4240ca2d1d78e2d65d544`  
		Last Modified: Fri, 08 Sep 2017 05:27:12 GMT  
		Size: 22.3 MB (22338151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984604f91630f68bf964efc6b7ee81bdfc5e658eccab951a9d82766fcfd2654d`  
		Last Modified: Fri, 08 Sep 2017 05:57:48 GMT  
		Size: 465.7 KB (465658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ebfa99eb5f14cb91aed3e670278b9d95b5536fc45ff6d74e57b5bf7cd7d0f4`  
		Last Modified: Fri, 08 Sep 2017 05:57:47 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87774056e9b494cacbace94fface85556e22250f46e7912778fbaf2034ad52f`  
		Last Modified: Fri, 08 Sep 2017 05:57:48 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0390f3f211cda1d2597482aed425a27f306a78eb490322d60e6d26f88eb69f2`  
		Last Modified: Fri, 08 Sep 2017 05:58:41 GMT  
		Size: 48.3 MB (48265839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867b359a170d7393db18587024b7a248bbf13a5270361bfa2e3e3111cdb1df3f`  
		Last Modified: Fri, 08 Sep 2017 05:58:32 GMT  
		Size: 272.2 KB (272151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
