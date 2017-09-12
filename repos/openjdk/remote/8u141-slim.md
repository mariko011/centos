## `openjdk:8u141-slim`

```console
$ docker pull openjdk@sha256:c220c4decad2273358a200bdb90f77228fe631c63d65269304217ce8a1b01624
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

### `openjdk:8u141-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:9a71ba7cfba6a773bd63db9a1884ca126f5d612e40952fef3c1aab6248e5d6c9
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91482703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32241009a73f22b8d9be0688620ac6c927ffc9262b8a336e122439b12ecffa72`
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
# Fri, 08 Sep 2017 08:56:42 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 08:56:42 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:56:42 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:56:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 08:57:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 08:57:02 GMT
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
	-	`sha256:212aa720df289e2251fd9227cdc0ba7a0442dae05e9a85019bc422c74f822d5f`  
		Last Modified: Sat, 09 Sep 2017 00:36:21 GMT  
		Size: 68.5 MB (68454940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe3f7320a87ad839b014fe2ae6fa1a186fd698410d51d261d4b924237359c30`  
		Last Modified: Sat, 09 Sep 2017 00:36:08 GMT  
		Size: 272.0 KB (272015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u141-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:f5fedfec47ba8e46d61558266fbab51f4b136ff9ef5cb1db6662f657d754aacc
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78415686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fd5e76985e5b9136f8295d62e360e3944e86dbeffb83c6c7946e78bdfcbd68f`
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
# Tue, 12 Sep 2017 01:24:22 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 01:24:23 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 01:24:24 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 01:24:25 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 01:26:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 01:27:10 GMT
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
	-	`sha256:86bb8d1acc10ff38d7e43f5a7eeee703f27c5fb8949bd62022fb4d1c41cf5edf`  
		Last Modified: Tue, 12 Sep 2017 02:25:19 GMT  
		Size: 56.5 MB (56533964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9783052422092a6ebbe149b5becef0fdca4cc80a326691ab9565cd20e461c763`  
		Last Modified: Tue, 12 Sep 2017 02:24:45 GMT  
		Size: 272.2 KB (272191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u141-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:3a13d84edec3a748eae5b411979e565a6e963e3407d1fe94af86b8683bf84b1c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75477713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:280eddf086f12e7e60e690c82fcd5de4c9ea9ab6da51860e9157f87c705ff302`
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
# Mon, 11 Sep 2017 23:36:50 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 11 Sep 2017 23:36:51 GMT
ENV JAVA_VERSION=8u141
# Mon, 11 Sep 2017 23:36:52 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 11 Sep 2017 23:36:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 11 Sep 2017 23:43:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 11 Sep 2017 23:43:55 GMT
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
	-	`sha256:a770a5282f631b4e38a2f18b829f9ef623c2ed1aa8c759c558fbc68584e4bd55`  
		Last Modified: Tue, 12 Sep 2017 00:36:58 GMT  
		Size: 55.5 MB (55496687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ceb571239492500bf5b6ebadd49eebe65322b50144b27873489950e91e3e538`  
		Last Modified: Tue, 12 Sep 2017 00:36:27 GMT  
		Size: 272.2 KB (272207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u141-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:d62c439dd65c5753a0b394b0b70432a9b5534efea1d6921c8f5b75ba0543e269
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.3 MB (79301824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e455f354a946102f005d508e8a8f56202de4aca6dea1af8a756f86c8fd056bba`
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
# Fri, 08 Sep 2017 22:43:47 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 22:43:52 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 22:43:53 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 22:43:54 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 22:45:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 22:45:44 GMT
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
	-	`sha256:5138efba7c13165402dd42568cdbc8dd5784f44cad84246839c7a9f8326d866d`  
		Last Modified: Fri, 08 Sep 2017 22:55:51 GMT  
		Size: 58.3 MB (58251218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a77eaad9cbc978cdf87d1ba427d2f905a1b9b374a26dd7b2d818629557e8b4`  
		Last Modified: Fri, 08 Sep 2017 22:55:33 GMT  
		Size: 272.1 KB (272133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u141-slim` - linux; 386

```console
$ docker pull openjdk@sha256:dc58b679878857f4c339ae3f7ef745f641678e2cd41a444ae9686a40c7e75259
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91561449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8492bfdd8558994823a201cd2a6baf93067af6d8d592e95307793d84e12898ee`
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
# Fri, 08 Sep 2017 15:15:44 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 15:15:44 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 15:15:45 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 15:15:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 15:16:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 15:16:24 GMT
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
	-	`sha256:fae98f3e4788b9631dd947899886866a6adaad60317ffd8e0605fc2a80f01ccf`  
		Last Modified: Fri, 08 Sep 2017 15:32:42 GMT  
		Size: 67.7 MB (67699776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422fc5dced716e8660cde9571c77feb246f0930932225b10554d46b443d73fd2`  
		Last Modified: Fri, 08 Sep 2017 15:32:27 GMT  
		Size: 272.1 KB (272088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u141-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:6a64b34cc9747e3616690cddffee85e50ae5abfe567e99a9e54570ced34fc79b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.1 MB (82103692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6880ab66d292d9343f9dbaeae2cf53491a5c3ae9ccde88d542a61383d4f20bf6`
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
# Fri, 08 Sep 2017 01:26:31 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 01:26:31 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 01:26:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 01:26:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 01:27:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 01:27:04 GMT
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
	-	`sha256:7c69ee6a1dc0dd1421b6d81a919b1309eccd850e2b2daf4d48ecd9822bc4bac5`  
		Last Modified: Fri, 08 Sep 2017 01:30:36 GMT  
		Size: 58.6 MB (58635516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1efeee050e152c674500adfe8600d1be59098187379d3c56e001280df2bb4bd`  
		Last Modified: Fri, 08 Sep 2017 01:30:23 GMT  
		Size: 272.1 KB (272051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u141-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:c122e3d61501bd4acc131ef28e37b806f1e60859be1fef36be8dd9528169ebca
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80674188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07658f9909effa8c7381151a8e5b2a8e4a062ea3aac23291d55d52499435730`
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
# Fri, 08 Sep 2017 05:54:39 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 05:54:40 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 05:54:40 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 05:54:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 05:55:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 05:55:07 GMT
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
	-	`sha256:c5260ff16062808f8ce9db2e3902406a9beaf81d77a8163735134329fd74a5a0`  
		Last Modified: Fri, 08 Sep 2017 05:58:16 GMT  
		Size: 57.6 MB (57597842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbe36359522eb17a587b8b2f4ae17a0f3b470a18dfad34c65e07d190d721ecd2`  
		Last Modified: Fri, 08 Sep 2017 05:57:47 GMT  
		Size: 272.2 KB (272158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
